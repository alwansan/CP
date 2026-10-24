.class public Landroidx/media3/decoder/VideoDecoderOutputBuffer;
.super Lcom/shabakaty/downloader/l05;
.source "VideoDecoderOutputBuffer.java"


# instance fields
.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public decoderPrivate:J

.field public format:Ljava/lang/Object;

.field public height:I

.field public mode:I

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public uvStride:I

.field public width:I

.field public yStride:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/l05;-><init>()V

    return-void
.end method


# virtual methods
.method public init(JILjava/nio/ByteBuffer;)V
    .locals 0

    .line 19
    iput-wide p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->s:J

    iput p3, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    iput-object p4, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->decoderPrivate:J

    return-void
.end method

.method public initForPrivateFrame(II)V
    .locals 0

    .line 20
    iput p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    iput p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    return-void
.end method

.method public initForYuvFrame(IIIII)Z
    .locals 0

    .line 21
    iput p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    iput p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    iput p3, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yStride:I

    iput p4, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->uvStride:I

    iput p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    const/4 p1, 0x0

    return p1
.end method
