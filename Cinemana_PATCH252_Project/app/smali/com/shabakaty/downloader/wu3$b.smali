.class public final Lcom/shabakaty/downloader/wu3$b;
.super Ljava/lang/Object;
.source "RtpPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wu3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:B

.field public d:I

.field public e:J

.field public f:I

.field public g:[B

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/wu3;->g:[B

    iput-object v0, p0, Lcom/shabakaty/downloader/wu3$b;->g:[B

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/wu3$b;->h:[B

    return-void
.end method
