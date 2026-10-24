.class public final Lcom/shabakaty/downloader/vd4$c;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/w53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vd4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vd4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/vz3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vz3$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/o91;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    return-void
.end method
