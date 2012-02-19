(*//
标题:内存搜索函数单元
说明:搜索内存
日期:2004-06-16
支持:wjhu111@21cn.com
设计:ZswangY37
//*)

///////修改日志
//2006-08-10 No.1 ZswangY37 完善 考虑读取数据跨越内存页的情况
//2006-09-21 No.1 ZswangY37 添加 FullCommandParam()清除自己的命令行参数
//2006-10-22 No.1 ZswangY37 优化 内存搜索函数

unit MemoryFunctions51;

interface

uses Windows, TypInfo, SysUtils, ComCtrls, Controls, Classes, Dialogs;

const
  cMinAddress = $00010000;
  cMaxAddress = $7FFFFFFF; //$0FFFFFFF
  
function Process_SearchString( //在进程中搜索字符串
  mProcessId: THandle; //进程ID
  mStr: string; //搜索的字符串
  mStartAddress: Integer = cMinAddress; //起始地址
  mEndAddress: Integer = cMaxAddress; //终止地址
  mIgnoreCase: Boolean = False //是否忽略大小写
): Integer; //返回字符串在进程中的地址

function Process_SearchMark( //在进程中搜索特征码
  mProcessId: THandle; //进程ID
  mMark: string; //特征码
  mStartAddress: Integer = cMinAddress; //起始地址
  mEndAddress: Integer = cMaxAddress; //终止地址
  mIgnoreCase: Boolean = False //是否忽略大小写
): Integer; //返回特征码在进程中的地址

function Process_Read( //进程读取
  mProcessId: THandle; //进程ID
  mBaseAddress: Integer; //基地址
  mLength: Integer //长度
): string; overload; //读成字符串返回

function Process_Read( //进程读取
  mProcessId: THandle; //进程ID
  mBaseAddress: Integer; //基地址
  var nBuffer; //缓冲区
  mLength: Integer //长度
): Boolean; overload; //返回读取是否成功

function Process_Write( //进程填写
  mProcessId: THandle; //进程ID
  mBaseAddress: Integer; //基地址
  mStr: string //字符串
): Boolean; overload; //返回填写是否成功

function Process_Write( //进程填写
  mProcessId: THandle; //进程ID
  mBaseAddress: Integer; //基地址
  const mBuffer; //缓冲区
  mLength: Integer //缓冲大小
): Boolean; overload; //返回填写是否成功

procedure FullCommandParam; // 清空自己的命令行参数

implementation

uses StringFunctions51;

function Process_SearchString( //进程搜索
  mProcessId: THandle; //进程ID
  mStr: string; //搜索的字符串
  mStartAddress: Integer = cMinAddress; //起始地址
  mEndAddress: Integer = cMaxAddress; //终止地址
  mIgnoreCase: Boolean = False //是否忽略大小写
): Integer; //返回字符串在进程中的地址
var
  vProcess: THandle;
  vNumberOfBytesRead: Longword;
  S: string;
  vStartAddress: Integer;
  vMemoryBasicInformation: TMemoryBasicInformation;
begin
  Result := -1;
  if mStr = '' then Exit;
  if mProcessID = 0 then Exit;
  if mStartAddress > mEndAddress then Exit;
  if mIgnoreCase then mStr := UpperCase(mStr);
  vProcess := OpenProcess(PROCESS_ALL_ACCESS, False, mProcessId);
  vStartAddress := (mStartAddress div $1000) * $1000;

  while (VirtualQueryEx(vProcess, Pointer(vStartAddress),
    vMemoryBasicInformation,
    SizeOf(vMemoryBasicInformation)) > 0) and (vStartAddress <= mEndAddress) do
  begin
    if vMemoryBasicInformation.State = MEM_COMMIT then
    begin
      SetLength(S, vMemoryBasicInformation.RegionSize);
      ReadProcessMemory(vProcess, vMemoryBasicInformation.BaseAddress, @S[1],
        vMemoryBasicInformation.RegionSize, vNumberOfBytesRead);
      if mIgnoreCase then S := UpperCase(S);
      if vStartAddress < mStartAddress then
      begin
        Delete(S, 1, mStartAddress - vStartAddress);
        Result := Pos(mStr, S) - 1;
        if Result >= 0 then
        begin
          Inc(Result, vStartAddress + (mStartAddress - vStartAddress));
          Break;
        end;
      end else
      begin
        Result := Pos(mStr, S) - 1;
        if Result >= 0 then
        begin
          Result := Result + vStartAddress;
          Break;
        end;
      end;
    end;
    vStartAddress := Longword(vMemoryBasicInformation.BaseAddress) +
      vMemoryBasicInformation.RegionSize;
  end;
  CloseHandle(vProcess);
end; { Process_SearchString }

function Process_SearchMark( //在进程中搜索特征码
  mProcessId: THandle; //进程ID
  mMark: string; //特征码
  mStartAddress: Integer = cMinAddress; //起始地址
  mEndAddress: Integer = cMaxAddress; //终止地址
  mIgnoreCase: Boolean = False //是否忽略大小写
): Integer; //返回特征码在进程中的地址
var
  vProcess: THandle;
  vNumberOfBytesRead: Longword;
  S: string;
  vStartAddress: Integer;
  vMemoryBasicInformation: TMemoryBasicInformation;
begin
  Result := -1;
  if mMark = '' then Exit;
  if mProcessID = 0 then Exit;
  if mStartAddress > mEndAddress then Exit;
  mMark := StringReplace(mMark, #32, '', [rfReplaceAll]);
  if mIgnoreCase then mMark := UpperMark(mMark);
  vProcess := OpenProcess(PROCESS_ALL_ACCESS, False, mProcessId);
  vStartAddress := (mStartAddress div $1000) * $1000;

  while (VirtualQueryEx(vProcess, Pointer(vStartAddress),
    vMemoryBasicInformation,
    SizeOf(vMemoryBasicInformation)) > 0) and (vStartAddress <= mEndAddress) do
  begin
    if vMemoryBasicInformation.State = MEM_COMMIT then
    begin
      SetLength(S, vMemoryBasicInformation.RegionSize);
      ReadProcessMemory(vProcess, vMemoryBasicInformation.BaseAddress, @S[1],
        vMemoryBasicInformation.RegionSize, vNumberOfBytesRead);
      if mIgnoreCase then S := UpperCase(S);
      if vStartAddress < mStartAddress then
      begin
        Delete(S, 1, mStartAddress - vStartAddress);
        Result := MarkPosition(S, mMark) - 1;
        if Result >= 0 then
        begin
          Result := Result + vStartAddress + (mStartAddress - vStartAddress);
          Break;
        end;
      end else
      begin
        Result := MarkPosition(S, mMark) - 1;
        if Result >= 0 then
        begin
          Result := Result + vStartAddress;
          Break;
        end;
      end;
    end;
    vStartAddress := Longword(vMemoryBasicInformation.BaseAddress) +
      vMemoryBasicInformation.RegionSize;
  end;
  CloseHandle(vProcess);
end; { Process_SearchMark }

(*// ZswangY37 2006-10-20 封印
function Process_SearchString( //进程搜索
  mProcessId: THandle; //进程ID
  mStr: string; //搜索的字符串
  mStartAddress: Integer = cMinAddress; //起始地址
  mEndAddress: Integer = cMaxAddress; //终止地址
  mIgnoreCase: Boolean = False //是否忽略大小写
): Integer; //返回字符串在进程中的地址
const
  cPageSize = $1000;
var
  vProcess: THandle;
  vNumberOfBytesRead: DWORD;
  S: string;
  T: string;
  L: Integer;
  vStartAddress: Integer;
begin
  Result := -1;
  if mStr = '' then Exit;
  if mProcessID = 0 then Exit;
  if mStartAddress > mEndAddress then Exit;
  L := Length(mStr);
  if mIgnoreCase then mStr := UpperCase(mStr);
  vProcess := OpenProcess(PROCESS_VM_READ, False, mProcessId);
  try
    vStartAddress := (mStartAddress div cPageSize) * cPageSize;
    SetLength(S, cPageSize);
    while vStartAddress <= mEndAddress do
    begin
      ReadProcessMemory(vProcess, Pointer(vStartAddress), @S[1],
        cPageSize, vNumberOfBytesRead);
      if vNumberOfBytesRead = 0 then begin
        Inc(vStartAddress, cPageSize);
        T := '';
        Continue;
      end;
      if mIgnoreCase then S := UpperCase(S);
      if vStartAddress < mStartAddress then
      begin
        Delete(S, 1, mStartAddress - vStartAddress);
        Result := Pos(mStr, T + S) - 1;
        if Result >= 0 then
        begin
          Result := Result + vStartAddress +
            (mStartAddress - vStartAddress) - Length(T);
          Break;
        end;
        SetLength(S, cPageSize);
      end else
      begin
        Result := Pos(mStr, T + S) - 1;
        if Result >= 0 then
        begin
          Result := Result + vStartAddress - Length(T);
          Break;
        end;
      end;
      T := Copy(S, cPageSize - L, MaxInt);
      Inc(vStartAddress, cPageSize);
    end;
    if Result > mEndAddress then Result := -1;
  finally
    CloseHandle(vProcess);
  end;
end; { Process_SearchString }

function Process_SearchMark( //在进程中搜索特征码
  mProcessId: THandle; //进程ID
  mMark: string; //特征码
  mStartAddress: Integer = cMinAddress; //起始地址
  mEndAddress: Integer = cMaxAddress; //终止地址
  mIgnoreCase: Boolean = False //是否忽略大小写
): Integer; //返回特征码在进程中的地址
const
  cPageSize = $1000;
var
  vProcess: THandle;
  vNumberOfBytesRead: DWORD;
  S: string;
  T: string;
  L: Integer;
  vStartAddress: Integer;
begin
  Result := -1;
  if mMark = '' then Exit;
  if mProcessID = 0 then Exit;
  if mStartAddress > mEndAddress then Exit;
  mMark := StringReplace(mMark, #32, '', [rfReplaceAll]);
  if mIgnoreCase then mMark := UpperMark(mMark);
  L := Length(mMark) div 2;
  vProcess := OpenProcess(PROCESS_VM_READ, False, mProcessId);
  try
    vStartAddress := (mStartAddress div cPageSize) * cPageSize;
    SetLength(S, cPageSize);
    while vStartAddress <= mEndAddress do
    begin
      ReadProcessMemory(vProcess, Pointer(vStartAddress), @S[1],
        cPageSize, vNumberOfBytesRead);
      if vNumberOfBytesRead = 0 then begin
        Inc(vStartAddress, cPageSize);
        T := '';
        Continue;
      end;
      if mIgnoreCase then S := UpperCase(S);
      if vStartAddress < mStartAddress then
      begin
        Delete(S, 1, mStartAddress - vStartAddress);
        Result := MarkPosition(T + S, mMark) - 1;
        if Result >= 0 then
        begin
          Result := Result + vStartAddress +
            (mStartAddress - vStartAddress) - Length(T);
          Break;
        end;
        SetLength(S, cPageSize);
      end else
      begin
        Result := MarkPosition(T + S, mMark) - 1;
        if Result >= 0 then
        begin
          Result := Result + vStartAddress - Length(T);
          Break;
        end;
      end;
      T := Copy(S, cPageSize - L, MaxInt);
      Inc(vStartAddress, cPageSize);
    end;
    if Result > mEndAddress then Result := -1;
  finally
    CloseHandle(vProcess);
  end;
end; { Process_SearchMark }
//*)

function Process_Read( //进程读取
  mProcessId: THandle; //进程ID
  mBaseAddress: Integer; //基地址
  mLength: Integer //长度
): string; //读成字符串返回
var
  vProcess: THandle;
  vNumberOfBytesRead: DWORD;
begin
  Result := '';
  if mProcessId = 0 then Exit;
  if mLength <= 0 then Exit;
  vProcess := OpenProcess(PROCESS_VM_READ, False, mProcessId);
  try
    SetLength(Result, mLength);
    ReadProcessMemory(vProcess, Pointer(mBaseAddress), @Result[1],
      mLength, vNumberOfBytesRead);
    if (vNumberOfBytesRead = 0) and (mLength >= $1000) then                     //2006-08-10 No.1
    begin
      mLength := $1000 - mBaseAddress mod $1000;
      ReadProcessMemory(vProcess, Pointer(mBaseAddress), @Result[1],
        mLength, vNumberOfBytesRead);
    end;
    SetLength(Result, vNumberOfBytesRead);
  finally
    CloseHandle(vProcess);
  end;
end; { Process_Read }

function Process_Read( //进程读取
  mProcessId: THandle; //进程ID
  mBaseAddress: Integer; //基地址
  var nBuffer; //缓冲区
  mLength: Integer //长度
): Boolean; //返回读取是否成功
var
  vProcess: THandle;
  vNumberOfBytesRead: DWORD;
begin
  Result := False;
  if mProcessId = 0 then Exit;
  if mLength <= 0 then Exit;
  vProcess := OpenProcess(PROCESS_VM_READ, False, mProcessId);
  try
    ReadProcessMemory(vProcess, Pointer(mBaseAddress), @nBuffer,
      mLength, vNumberOfBytesRead);
    Result := vNumberOfBytesRead <> 0;
  finally
    CloseHandle(vProcess);
  end;
end; { Process_Read }

function Process_Write( //进程填写
  mProcessId: THandle; //进程ID
  mBaseAddress: Integer; //基地址
  mStr: string //字符串
): Boolean; overload; //返回填写是否成功
var
  vProcess: THandle;
  vNumberOfBytesRead: DWORD;
  vOldProtect: DWORD;
begin
  Result := False;
  if mProcessId = 0 then Exit;
  if mStr = '' then Exit;
  vProcess := OpenProcess(PROCESS_ALL_ACCESS, True, mProcessId);
  try
    VirtualProtectEx(vProcess, Pointer(mBaseAddress),
      Length(mStr), PAGE_EXECUTE_READWRITE, @vOldProtect);
    WriteProcessMemory(vProcess, Pointer(mBaseAddress), @mStr[1],
      Length(mStr), vNumberOfBytesRead);
    VirtualProtectEx(vProcess, Pointer(mBaseAddress),
      Length(mStr), vOldProtect, @vOldProtect);
    Result := vNumberOfBytesRead <> 0;
  finally
    CloseHandle(vProcess);
  end;
end; { Process_Write }

function Process_Write( //进程填写
  mProcessId: THandle; //进程ID
  mBaseAddress: Integer; //基地址
  const mBuffer; //缓冲区
  mLength: Integer //缓冲大小
): Boolean; overload; //返回填写是否成功
var
  vProcess: THandle;
  vNumberOfBytesRead: DWORD;
  vOldProtect: DWORD;
begin
  Result := False;
  if mProcessId = 0 then Exit;
  if mLength = 0 then Exit;
  vProcess := OpenProcess(PROCESS_ALL_ACCESS, True, mProcessId);
  try
    VirtualProtectEx(vProcess, Pointer(mBaseAddress),
      mLength, PAGE_EXECUTE_READWRITE, @vOldProtect);
    WriteProcessMemory(vProcess, Pointer(mBaseAddress), @mBuffer,
      mLength, vNumberOfBytesRead);
    VirtualProtectEx(vProcess, Pointer(mBaseAddress),
      mLength, vOldProtect, @vOldProtect);
    Result := vNumberOfBytesRead <> 0;
  finally
    CloseHandle(vProcess);
  end;
end; { Process_Write }

procedure FullCommandParam; // 清空自己的命令行参数
var
  vAddress: Integer;
  vStart: Integer;
  vMarks: Boolean;
  L: Integer;
  S: string;
begin
  vAddress := Integer(GetCommandLineA);
  if vAddress <> 0 then
  begin
    vStart := 0;
    vMarks := False;
    while PChar(vAddress)^ <> #0 do
    begin
      case PChar(vAddress)^ of
        #32: if not vMarks then
        begin
          vStart := vAddress;
          Break;
        end;
        '"': vMarks := not vMarks;
      end;
      Inc(vAddress);
    end;
    L := Length(PChar(vAddress)) - (vStart - vAddress);
    if L > 0 then
    begin
      SetLength(S, L);
      FillChar(S[1], L, 0);
      Process_Write(GetCurrentProcessId, vStart, S);
    end;
  end;

  vAddress := Integer(GetCommandLineW);
  if vAddress <> 0 then
  begin
    vStart := 0;
    vMarks := False;
    while PWideChar(vAddress)^ <> #0 do
    begin
      case PWideChar(vAddress)^ of
        #32: if not vMarks then
        begin
          vStart := vAddress;
          Break;
        end;
        '"': vMarks := not vMarks;
      end;
      Inc(vAddress, 2);
    end;
    L := Length(PWideChar(vAddress)) * 2 - (vStart - vAddress);
    if L > 0 then
    begin
      SetLength(S, L);
      FillChar(S[1], L, 0);
      Process_Write(GetCurrentProcessId, vStart, S);
    end;
  end;
end; { FullCommandParam }

end.
