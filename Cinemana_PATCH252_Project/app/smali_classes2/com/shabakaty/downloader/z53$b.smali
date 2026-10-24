.class public final Lcom/shabakaty/downloader/z53$b;
.super Lcom/shabakaty/downloader/ys3;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/z53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/ys3;

.field public final u:Lcom/shabakaty/downloader/eo;

.field public v:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ys3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ys3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z53$b;->t:Lcom/shabakaty/downloader/ys3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/z53$b$a;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/z53$b$a;-><init>(Lcom/shabakaty/downloader/z53$b;Lcom/shabakaty/downloader/r94;)V

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/z53$b;->u:Lcom/shabakaty/downloader/eo;

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z53$b;->t:Lcom/shabakaty/downloader/ys3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z53$b;->t:Lcom/shabakaty/downloader/ys3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->close()V

    return-void
.end method

.method public d()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z53$b;->t:Lcom/shabakaty/downloader/ys3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/shabakaty/downloader/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z53$b;->u:Lcom/shabakaty/downloader/eo;

    return-object v0
.end method
