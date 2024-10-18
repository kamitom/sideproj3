# Vue 3 + Vite

This template should help get you started developing with Vue 3 in Vite. The template uses Vue 3 `<script setup>` SFCs, check out the [script setup docs](https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup) to learn more.

Learn more about IDE Support for Vue in the [Vue Docs Scaling up Guide](https://vuejs.org/guide/scaling-up/tooling.html#ide-support).

## 開發

```bash
cd ~/sideproj3/image/frontend 
bash script/run-dev-mode.sh
```

- 進入容器的shell環境後(yarn)

```bash
yarn install
yarn dev
```

- 進入容器的shell環境後(pnpm)

```bash
npm install -g pnpm
pnpm install
pnpm run dev
```

### 建置映像檔

```bash
cd ~/sideproj1/image/frontend
bash -e /script/build-docker-image.sh
```
