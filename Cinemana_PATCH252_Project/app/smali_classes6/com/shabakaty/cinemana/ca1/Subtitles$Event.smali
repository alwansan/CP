.class final Lcom/shabakaty/cinemana/ca1/Subtitles$Event;
.super Ljava/lang/Object;
.source "Subtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Subtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Event"
.end annotation


# instance fields
.field final index:I

.field final start:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/Subtitles$Event;->index:I

    iput-boolean p2, p0, Lcom/shabakaty/cinemana/ca1/Subtitles$Event;->start:Z

    return-void
.end method
