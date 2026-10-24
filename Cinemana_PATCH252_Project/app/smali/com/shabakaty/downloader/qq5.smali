.class public final synthetic Lcom/shabakaty/downloader/qq5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/o36;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/qq5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/qq5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qq5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qq5;->a:Lcom/shabakaty/downloader/qq5;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/shabakaty/downloader/d46;->b:Lcom/shabakaty/downloader/z36;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/eb7;->s:Lcom/shabakaty/downloader/eb7;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/eb7;->b()Lcom/shabakaty/downloader/fb7;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/fb7;->c()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
