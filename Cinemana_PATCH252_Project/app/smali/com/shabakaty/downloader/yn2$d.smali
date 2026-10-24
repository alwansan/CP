.class public final Lcom/shabakaty/downloader/yn2$d;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yn2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:[B

.field public b:Z

.field public c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/yn2$d;->a:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yn2$c;)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yn2$d;->c:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    iget-wide v2, p0, Lcom/shabakaty/downloader/yn2$d;->d:J

    iget v4, p0, Lcom/shabakaty/downloader/yn2$d;->e:I

    iget v5, p0, Lcom/shabakaty/downloader/yn2$d;->f:I

    iget v6, p0, Lcom/shabakaty/downloader/yn2$d;->g:I

    iget-object v7, p1, Lcom/shabakaty/downloader/yn2$c;->j:Lcom/shabakaty/downloader/fp4$a;

    invoke-interface/range {v1 .. v7}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/yn2$d;->c:I

    :cond_0
    return-void
.end method
