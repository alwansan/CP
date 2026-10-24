.class public final Lcom/shabakaty/downloader/z53$c;
.super Lcom/shabakaty/downloader/ys3;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/z53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/fr2;

.field public final u:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fr2;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ys3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z53$c;->t:Lcom/shabakaty/downloader/fr2;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/z53$c;->u:J

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/z53$c;->u:J

    return-wide v0
.end method

.method public d()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z53$c;->t:Lcom/shabakaty/downloader/fr2;

    return-object v0
.end method

.method public f()Lcom/shabakaty/downloader/eo;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
