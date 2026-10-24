.class public Lcom/shabakaty/downloader/u65$b;
.super Lcom/shabakaty/downloader/e45;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/u65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/u65;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u65;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/u65$b;->a:Lcom/shabakaty/downloader/u65;

    invoke-direct {p0}, Lcom/shabakaty/downloader/e45;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/u65$b;->a:Lcom/shabakaty/downloader/u65;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/shabakaty/downloader/u65;->t:Lcom/shabakaty/downloader/c45;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/u65;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
