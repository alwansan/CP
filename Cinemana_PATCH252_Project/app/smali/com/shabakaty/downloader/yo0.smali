.class public Lcom/shabakaty/downloader/yo0;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Lcom/shabakaty/downloader/iv$a;


# instance fields
.field public final synthetic a:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c;Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/yo0;->a:Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo0;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    return-void
.end method
