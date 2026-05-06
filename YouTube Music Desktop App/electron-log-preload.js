
      try {
        (function r({contextBridge:n,ipcRenderer:s}){if(!s)return;s.on("__ELECTRON_LOG_IPC__",(o,a)=>{window.postMessage({cmd:"message",...a})}),s.invoke("__ELECTRON_LOG__",{cmd:"getOptions"}).catch(o=>console.error(new Error(`electron-log isn't initialized in the main process. Please call log.initialize() before. ${o.message}`)));const i={sendToMain(o){try{s.send("__ELECTRON_LOG__",o)}catch(a){console.error("electronLog.sendToMain ",a,"data:",o),s.send("__ELECTRON_LOG__",{cmd:"errorHandler",error:{message:a==null?void 0:a.message,stack:a==null?void 0:a.stack},errorName:"sendToMain"})}},log(...o){i.sendToMain({data:o,level:"info"})}};for(const o of["error","warn","info","verbose","debug","silly"])i[o]=(...a)=>i.sendToMain({data:a,level:o});if(n&&process.contextIsolated)try{n.exposeInMainWorld("__electronLog",i)}catch{}typeof window=="object"?window.__electronLog=i:__electronLog=i})(require('electron'));
      } catch(e) {
        console.error(e);
      }
    