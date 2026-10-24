.class public Lcom/shabakaty/downloader/ct0$e;
.super Lcom/shabakaty/downloader/wi1;
.source "DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ct0;->createFragmentContainer()Lcom/shabakaty/downloader/wi1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/wi1;

.field public final synthetic b:Lcom/shabakaty/downloader/ct0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ct0;Lcom/shabakaty/downloader/wi1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ct0$e;->b:Lcom/shabakaty/downloader/ct0;

    iput-object p2, p0, Lcom/shabakaty/downloader/ct0$e;->a:Lcom/shabakaty/downloader/wi1;

    invoke-direct {p0}, Lcom/shabakaty/downloader/wi1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0$e;->a:Lcom/shabakaty/downloader/wi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wi1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0$e;->a:Lcom/shabakaty/downloader/wi1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wi1;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0$e;->b:Lcom/shabakaty/downloader/ct0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0$e;->a:Lcom/shabakaty/downloader/wi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wi1;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/ct0$e;->b:Lcom/shabakaty/downloader/ct0;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/ct0;->G:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
