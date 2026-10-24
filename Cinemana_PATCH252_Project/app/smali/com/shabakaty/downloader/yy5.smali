.class public final synthetic Lcom/shabakaty/downloader/yy5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/o36;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/yy5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/yy5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yy5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yy5;->a:Lcom/shabakaty/downloader/yy5;

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
    sget-object v0, Lcom/shabakaty/downloader/e77;->s:Lcom/shabakaty/downloader/e77;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/e77;->r:Lcom/shabakaty/downloader/fp6;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/fp6;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g77;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/g77;->a()J

    move-result-wide v0

    long-to-int v1, v0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
