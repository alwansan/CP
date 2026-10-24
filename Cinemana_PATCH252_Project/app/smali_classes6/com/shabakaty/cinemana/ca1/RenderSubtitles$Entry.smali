.class final Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;
.super Ljava/lang/Object;
.source "RenderSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/RenderSubtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field end:J

.field offset:J

.field subtitle:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;JJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;->subtitle:Ljava/lang/Object;

    .line 23
    iput-wide p2, p0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;->offset:J

    .line 24
    iput-wide p4, p0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;->end:J

    .line 25
    return-void
.end method
