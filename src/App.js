import './App.css';
import React from 'react';

import {create as ipfsHttpClient } from 'ipfs-http-client'


const client=ipfsHttpClient('https://ipfs.infura.io:5001/api/v0');



function App() {
  return (
    <div>
      <label>

        <p>Upload Image</p>
        <input placeholder="Upload" type="file"
        onChange={async (e)=>{
          const file=e.target.files[0]
          console.log(file);

          
          console.log(client);
          const add=await client.add(file);
          const url=`https://ipfs.infura.io/ipfs/${add.path}`;
          console.log(url);
        }}/>

      </label>
      
    </div>
  );
}

export default App;
