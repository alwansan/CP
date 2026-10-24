.class public Lcom/shabakaty/downloader/t91$a;
.super Lcom/shabakaty/downloader/gq4;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/t91;->P(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t91;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/t91$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/shabakaty/downloader/gq4;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t91$a;->a:Landroid/view/View;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/g45;->a:Lcom/shabakaty/downloader/p45;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/p45;->h(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/t91$a;->a:Landroid/view/View;

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/p45;->b(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/dq4;->y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method
