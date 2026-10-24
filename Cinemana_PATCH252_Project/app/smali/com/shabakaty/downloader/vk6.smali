.class public final Lcom/shabakaty/downloader/vk6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final b:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/j87;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "DiscoveryManager"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/vk6;->b:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/j87;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vk6;->a:Lcom/shabakaty/downloader/j87;

    return-void
.end method
