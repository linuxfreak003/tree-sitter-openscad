package tree_sitter_openscad_test

import (
	"testing"

	tree_sitter_openscad "github.com/linuxfreak003/tree-sitter-openscad/bindings/go"
	tree_sitter "github.com/tree-sitter/go-tree-sitter"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_openscad.Language())
	if language == nil {
		t.Errorf("Error loading Openscad grammar")
	}
}
