.class public Lcom/shabakaty/downloader/nk2;
.super Ljava/lang/Object;
.source "LogcatLogStrategy.java"

# interfaces
.implements Lcom/shabakaty/downloader/kk2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, "NO_TAG"

    .line 1
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
