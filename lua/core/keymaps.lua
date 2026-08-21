-- On définit notre touche leader sur espace
vim.g.mapleader = " "

-- Raccourci pour la fonction set
local keymap = vim.keymap.set

-- Ouverture Lazy
keymap("n", "<leader>lz", ":Lazy<CR>", { desc = "Ouverture Lazy" })

-- on utilise ;; pour sortir du monde insertion
keymap("i", ";;", "<ESC>", { desc = "Sortir du mode insertion avec ;;" })

-- Raccourci global sauvegarder tous les fichiers (mode normal, visuel, sélection…) → :wall<CR>
keymap({ "n", "v", "x" }, "<M-S>", ":wall<CR>", { desc = "Sauvegarde générale" })

-- Sauvegarder le fichier courant
keymap({ "n", "v", "x" }, "<leader>w", ":w<CR>", { desc = "Sauvegarde fichier courant" })

-- Même raccourci en mode insertion sauvegarder tous les fichiers → exécute :wall sans quitter le mode insertion
keymap("i", "<M-S>", "<Esc>:wall<CR>", { desc = "Sauvegarde générale (insert)" })

-- on efface le surlignage de la recherche
keymap("n", "<leader>n", ":nohl<CR>", { desc = "Effacer le surlignage de la recherche" })

-- I déplace le texte sélectionné vers le haut en mode visuel (activé avec v)
keymap("v", "<S-i>", ":m .-2<CR>==", { desc = "Déplace le texte sélectionné vers le haut en mode visuel" })
-- K déplace le texte sélectionné vers le bas en mode visuel (activé avec v)
keymap("v", "<S-k>", ":m .+1<CR>==", { desc = "Déplace le texte sélectionné vers le bas en mode visuel" })

-- I déplace le texte sélectionné vers le haut en mode visuel bloc (activé avec V)
keymap(
	"x",
	"<S-i>",
	":move '<-2<CR>gv-gv",
	{ desc = "Déplace le texte sélectionné vers le haut en mode visuel bloc" }
)
-- K déplace le texte sélectionné vers le bas en mode visuel bloc (activé avec V)
keymap(
	"x",
	"<S-k>",
	":move '>+1<CR>gv-gv",
	{ desc = "Déplace le texte sélectionné vers le bas en mode visuel bloc" }
)

-- Changement de fenêtre avec Ctrl + déplacement uniquement au lieu de Ctrl-w + déplacement
keymap("n", "<C-h>", "<C-w>h", { desc = "Déplace le curseur dans la fenêtre de gauche" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Déplace le curseur dans la fenêtre du bas" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Déplace le curseur dans la fenêtre du haut" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Déplace le curseur dans la fenêtre droite" })

-- Redimensionnement des fenêtres
keymap("n", "<C-Left>", "<C-w><")
keymap("n", "<C-Right>", "<C-w>>")
keymap("n", "<C-Up>", "<C-w>+")
keymap("n", "<C-Down>", "<C-w>-")

-- Navigation entre les buffers
keymap("n", "<S-l>", ":bnext<CR>") -- , opts)
keymap("n", "<S-h>", ":bprevious<CR>") -- , opts)

-- Fermeture du buffer courant sans fermer la fenêtre
keymap("n", "<leader>q", ":bp | sp | bn | bd<CR>", { desc = "Fermeture buffer courant sans fermer la fenêtre" })
