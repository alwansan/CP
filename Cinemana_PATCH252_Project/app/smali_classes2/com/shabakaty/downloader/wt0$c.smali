.class public final Lcom/shabakaty/downloader/wt0$c;
.super Lcom/shabakaty/downloader/af2;
.source "DiskLruCache.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wt0;->g()Lcom/shabakaty/downloader/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/io/IOException;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wt0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wt0$c;->r:Lcom/shabakaty/downloader/wt0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/io/IOException;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/wt0$c;->r:Lcom/shabakaty/downloader/wt0;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/shabakaty/downloader/wt0;->z:Z

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
