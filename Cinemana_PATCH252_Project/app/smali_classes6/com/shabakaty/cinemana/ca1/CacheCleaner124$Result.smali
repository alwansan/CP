.class final Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;
.super Ljava/lang/Object;
.source "CacheCleaner124.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/CacheCleaner124;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field after:J

.field before:J

.field deleted:J

.field files:I

.field fresco:Z

.field skipped:J

.field userDataDeleted:J

.field userFiles:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method freed()J
    .locals 4

    .line 51
    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->before:J

    iget-wide v2, p0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->after:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method
