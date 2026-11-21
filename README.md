# cas-charcreator companions

Open-source companion resources for **CAS Character Creator** (`cas-charcreator`), the dual-framework (VORP + RSGCore) RedM character creator and character-selection script.

The main `cas-charcreator` resource is distributed via Cfx.re Asset Escrow (encrypted) and is delivered with your purchase. These companion resources are NOT escrowed and live here so you can install, read, and update them freely.

## What is in here

| Resource | Framework | Purpose |
|----------|-----------|---------|
| `vorp_character` | VORP only | Compatibility shim. Proxies legacy `exports.vorp_character` calls to cas-charcreator (used by `vorp_inventory` and other clothing scripts). It must be the only resource named `vorp_character` (do not also load the stock one). |
| `rsg-appearance` (stub) | RSGCore only | cas owns the appearance AND wardrobe stack on RSG. Replace your stock `rsg-appearance` folder with this stub. It keeps the `rsg-appearance` name, routes the read-only `rsg-hud` / `rsg-essentials` exports to cas, and provides the `rsg-wardrobe` name. |

`INSTALL-FIRST.txt` has the full summary.

## Which resources go where

- **VORP servers:** `cas-charcreator` + `vorp_character`.
- **RSGCore servers:** `cas-charcreator` + the `rsg-appearance` stub (replace your stock folder), and DELETE your stock `rsg-wardrobe` folder entirely. Do not use `vorp_character` on RSG.

## Install

Drop the resources in, then follow the exact `server.cfg` lines and load order in the documentation (delivered with the `cas-charcreator` package under `docs/`, and on the docs site).

- Purchase, support, and updates: https://codeaftersex.com/script/character-creator

## Download

Grab the packaged build from the [Releases](../../releases) tab, or browse the files in this repository directly.

Get CAS Character Creator: [codeaftersex.com/script/character-creator](https://codeaftersex.com/script/character-creator)

## More from CAS Scripts

- **Store:** [codeaftersex.com/scripts](https://codeaftersex.com/scripts), RedM scripts for VORP and RSG servers, most with a live demo
- **Free maps:** [codeaftersex.com/maps](https://codeaftersex.com/maps)
- **More free scripts:** [github.com/CAS-Scripts](https://github.com/CAS-Scripts)
- **Documentation:** [code-after-sex.gitbook.io/script-documentation](https://code-after-sex.gitbook.io/script-documentation/)
- **Support:** [Discord](https://discord.gg/codeaftersex)
