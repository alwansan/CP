.class public final Lcom/shabakaty/downloader/k21$a;
.super Lcom/shabakaty/downloader/my;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/k21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/my<",
        "Lcom/shabakaty/downloader/sz2;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/k21;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k21;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/my;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k21$a;->r:Lcom/shabakaty/downloader/k21;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21$a;->r:Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/k21;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method
