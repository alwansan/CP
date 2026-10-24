.class public final Lcom/shabakaty/downloader/qi$a$a$a;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qi$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/shabakaty/downloader/qi$a;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/shabakaty/downloader/qi$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qi$a$a$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/qi$a$a$a;->b:Lcom/shabakaty/downloader/qi$a;

    return-void
.end method
