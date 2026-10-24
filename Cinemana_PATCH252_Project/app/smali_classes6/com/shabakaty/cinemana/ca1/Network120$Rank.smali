.class final Lcom/shabakaty/cinemana/ca1/Network120$Rank;
.super Ljava/lang/Object;
.source "Network120.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Network120;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Rank"
.end annotation


# instance fields
.field final priority:I

.field final sequence:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Network120;->priority(Ljava/lang/Runnable;)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/Network120$Rank;->priority:I

    iput-wide p2, p0, Lcom/shabakaty/cinemana/ca1/Network120$Rank;->sequence:J

    return-void
.end method
