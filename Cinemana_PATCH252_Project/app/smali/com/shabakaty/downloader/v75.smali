.class public final Lcom/shabakaty/downloader/v75;
.super Ljava/lang/Object;
.source "WorkNameDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/u75;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/downloader/t75;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/v75;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/v75$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v75$a;-><init>(Lcom/shabakaty/downloader/v75;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v75;->b:Lcom/shabakaty/downloader/x31;

    return-void
.end method
