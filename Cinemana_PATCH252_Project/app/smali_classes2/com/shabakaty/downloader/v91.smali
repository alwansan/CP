.class public final Lcom/shabakaty/downloader/v91;
.super Lcom/shabakaty/downloader/zd2;
.source "JvmBuiltInsCustomizer.kt"


# static fields
.field public static final f:Lcom/shabakaty/downloader/v91;

.field public static final g:Lcom/shabakaty/downloader/zd2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v91;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v91;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/v91;->g:Lcom/shabakaty/downloader/zd2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yj2;

    const-string v1, "FallbackBuiltIns"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/yj2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/zd2;-><init>(Lcom/shabakaty/downloader/md4;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zd2;->d(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic r()Lcom/shabakaty/downloader/oc3;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oc3$a;->a:Lcom/shabakaty/downloader/oc3$a;

    return-object v0
.end method
