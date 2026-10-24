.class final Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;
.super Ljava/lang/Object;
.source "EmbeddedMkvSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EbmlElement"
.end annotation


# instance fields
.field final data:J

.field final end:J

.field final id:J

.field final size:J

.field final unknown:Z


# direct methods
.method constructor <init>(JJJJZ)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    iput-wide p3, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->size:J

    iput-wide p5, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->data:J

    iput-wide p7, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->end:J

    iput-boolean p9, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    return-void
.end method
