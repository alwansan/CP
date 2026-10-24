.class public Lcom/facebook/internal/FacebookDialogFragment$1;
.super Ljava/lang/Object;
.source "FacebookDialogFragment.java"

# interfaces
.implements Lcom/facebook/internal/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FacebookDialogFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/internal/FacebookDialogFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/FacebookDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogFragment$1;->a:Lcom/facebook/internal/FacebookDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment$1;->a:Lcom/facebook/internal/FacebookDialogFragment;

    sget v1, Lcom/facebook/internal/FacebookDialogFragment;->I:I

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/FacebookDialogFragment;->d2(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method
