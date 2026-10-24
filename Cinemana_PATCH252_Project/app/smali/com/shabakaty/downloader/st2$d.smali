.class public final Lcom/shabakaty/downloader/st2$d;
.super Lcom/shabakaty/downloader/af2;
.source "MiscBindingAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/st2;->e(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/views/DownloadButton;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Landroid/view/View$OnClickListener;

.field public final synthetic s:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/st2$d;->r:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/shabakaty/downloader/st2$d;->s:Lcom/shabakaty/downloader/views/DownloadButton;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/views/DownloadButton;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/st2$d;->r:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/shabakaty/downloader/st2$d;->s:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
