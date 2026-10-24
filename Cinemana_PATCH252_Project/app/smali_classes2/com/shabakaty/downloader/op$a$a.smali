.class public final Lcom/shabakaty/downloader/op$a$a;
.super Lcom/shabakaty/downloader/ci1;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/op$a;-><init>(Lcom/shabakaty/downloader/wt0$e;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic s:Lcom/shabakaty/downloader/op$a;

.field public final synthetic t:Lcom/shabakaty/downloader/r94;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/op$a;Lcom/shabakaty/downloader/r94;Lcom/shabakaty/downloader/r94;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/r94;",
            "Lcom/shabakaty/downloader/r94;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/op$a$a;->s:Lcom/shabakaty/downloader/op$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/op$a$a;->t:Lcom/shabakaty/downloader/r94;

    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/ci1;-><init>(Lcom/shabakaty/downloader/r94;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op$a$a;->s:Lcom/shabakaty/downloader/op$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op$a;->u:Lcom/shabakaty/downloader/wt0$e;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0$e;->close()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ci1;->r:Lcom/shabakaty/downloader/r94;

    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->close()V

    return-void
.end method
