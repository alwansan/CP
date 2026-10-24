.class public Lcom/shabakaty/downloader/z53$b$a;
.super Lcom/shabakaty/downloader/ci1;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/z53$b;-><init>(Lcom/shabakaty/downloader/ys3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic s:Lcom/shabakaty/downloader/z53$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z53$b;Lcom/shabakaty/downloader/r94;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/z53$b$a;->s:Lcom/shabakaty/downloader/z53$b;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/ci1;-><init>(Lcom/shabakaty/downloader/r94;)V

    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ci1;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/z53$b$a;->s:Lcom/shabakaty/downloader/z53$b;

    iput-object p1, p2, Lcom/shabakaty/downloader/z53$b;->v:Ljava/io/IOException;

    .line 3
    throw p1
.end method
