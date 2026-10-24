.class Lcom/shabakaty/cinemana/ca1/Sizes$Entry;
.super Ljava/lang/Object;
.source "Sizes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Sizes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field final bytes:J

.field final time:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Sizes$Entry;->bytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Sizes$Entry;->time:J

    return-void
.end method
