.class public final Lcom/shabakaty/downloader/ze$e;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final r:Z

.field public final s:Lcom/shabakaty/downloader/wh1;


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/wh1;Z)V
    .locals 2

    const/16 v0, 0x24

    const-string v1, "AudioTrack write failed: "

    .line 1
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ze$e;->r:Z

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ze$e;->s:Lcom/shabakaty/downloader/wh1;

    return-void
.end method
