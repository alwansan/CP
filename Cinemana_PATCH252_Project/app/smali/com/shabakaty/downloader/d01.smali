.class public Lcom/shabakaty/downloader/d01;
.super Ljava/lang/Object;
.source "DrawController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d01$a;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/kz4;

.field public b:Lcom/shabakaty/downloader/l01;

.field public c:Lcom/shabakaty/downloader/r02;

.field public d:Lcom/shabakaty/downloader/d01$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r02;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/d01;->c:Lcom/shabakaty/downloader/r02;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/l01;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/l01;-><init>(Lcom/shabakaty/downloader/r02;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d01;->b:Lcom/shabakaty/downloader/l01;

    return-void
.end method
