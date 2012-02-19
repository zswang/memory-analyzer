(*//
����:�ڴ�����������Ԫ
˵��:�����ڴ�
����:2004-06-16
֧��:wjhu111@21cn.com
���:ZswangY37
//*)

///////�޸���־
//2006-08-10 No.1 ZswangY37 ���� ���Ƕ�ȡ���ݿ�Խ�ڴ�ҳ�����
//2006-09-21 No.1 ZswangY37 ��� FullCommandParam()����Լ��������в���
//2006-10-22 No.1 ZswangY37 �Ż� �ڴ���������

unit MemoryFunctions51;

interface

uses Windows, TypInfo, SysUtils, ComCtrls, Controls, Classes, Dialogs;

const
  cMinAddress = $00010000;
  cMaxAddress = $7FFFFFFF; //$0FFFFFFF
  
function Process_SearchString( //�ڽ����������ַ���
  mProcessId: THandle; //����ID
  mStr: string; //�������ַ���
  mStartAddress: Integer = cMinAddress; //��ʼ��ַ
  mEndAddress: Integer = cMaxAddress; //��ֹ��ַ
  mIgnoreCase: Boolean = False //�Ƿ���Դ�Сд
): Integer; //�����ַ����ڽ����еĵ�ַ

function Process_SearchMark( //�ڽ���������������
  mProcessId: THandle; //����ID
  mMark: string; //������
  mStartAddress: Integer = cMinAddress; //��ʼ��ַ
  mEndAddress: Integer = cMaxAddress; //��ֹ��ַ
  mIgnoreCase: Boolean = False //�Ƿ���Դ�Сд
): Integer; //�����������ڽ����еĵ�ַ

function Process_Read( //���̶�ȡ
  mProcessId: THandle; //����ID
  mBaseAddress: Integer; //����ַ
  mLength: Integer //����
): string; overload; //�����ַ�������

function Process_Read( //���̶�ȡ
  mProcessId: THandle; //����ID
  mBaseAddress: Integer; //����ַ
  var nBuffer; //������
  mLength: Integer //����
): Boolean; overload; //���ض�ȡ�Ƿ�ɹ�

function Process_Write( //������д
  mProcessId: THandle; //����ID
  mBaseAddress: Integer; //����ַ
  mStr: string //�ַ���
): Boolean; overload; //������д�Ƿ�ɹ�

function Process_Write( //������д
  mProcessId: THandle; //����ID
  mBaseAddress: Integer; //����ַ
  const mBuffer; //������
  mLength: Integer //�����С
): Boolean; overload; //������д�Ƿ�ɹ�

procedure FullCommandParam; // ����Լ��������в���

implementation

uses StringFunctions51;

function Process_SearchString( //��������
  mProcessId: THandle; //����ID
  mStr: string; //�������ַ���
  mStartAddress: Integer = cMinAddress; //��ʼ��ַ
  mEndAddress: Integer = cMaxAddress; //��ֹ��ַ
  mIgnoreCase: Boolean = False //�Ƿ���Դ�Сд
): Integer; //�����ַ����ڽ����еĵ�ַ
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

function Process_SearchMark( //�ڽ���������������
  mProcessId: THandle; //����ID
  mMark: string; //������
  mStartAddress: Integer = cMinAddress; //��ʼ��ַ
  mEndAddress: Integer = cMaxAddress; //��ֹ��ַ
  mIgnoreCase: Boolean = False //�Ƿ���Դ�Сд
): Integer; //�����������ڽ����еĵ�ַ
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

(*// ZswangY37 2006-10-20 ��ӡ
function Process_SearchString( //��������
  mProcessId: THandle; //����ID
  mStr: string; //�������ַ���
  mStartAddress: Integer = cMinAddress; //��ʼ��ַ
  mEndAddress: Integer = cMaxAddress; //��ֹ��ַ
  mIgnoreCase: Boolean = False //�Ƿ���Դ�Сд
): Integer; //�����ַ����ڽ����еĵ�ַ
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

function Process_SearchMark( //�ڽ���������������
  mProcessId: THandle; //����ID
  mMark: string; //������
  mStartAddress: Integer = cMinAddress; //��ʼ��ַ
  mEndAddress: Integer = cMaxAddress; //��ֹ��ַ
  mIgnoreCase: Boolean = False //�Ƿ���Դ�Сд
): Integer; //�����������ڽ����еĵ�ַ
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

function Process_Read( //���̶�ȡ
  mProcessId: THandle; //����ID
  mBaseAddress: Integer; //����ַ
  mLength: Integer //����
): string; //�����ַ�������
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

function Process_Read( //���̶�ȡ
  mProcessId: THandle; //����ID
  mBaseAddress: Integer; //����ַ
  var nBuffer; //������
  mLength: Integer //����
): Boolean; //���ض�ȡ�Ƿ�ɹ�
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

function Process_Write( //������д
  mProcessId: THandle; //����ID
  mBaseAddress: Integer; //����ַ
  mStr: string //�ַ���
): Boolean; overload; //������д�Ƿ�ɹ�
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

function Process_Write( //������д
  mProcessId: THandle; //����ID
  mBaseAddress: Integer; //����ַ
  const mBuffer; //������
  mLength: Integer //�����С
): Boolean; overload; //������д�Ƿ�ɹ�
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

procedure FullCommandParam; // ����Լ��������в���
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
