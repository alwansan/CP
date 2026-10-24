.class public final Lcom/shabakaty/downloader/s13$a;
.super Ljava/lang/Object;
.source "JavaNullabilityAnnotationSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/s13$a;

.field public static final b:Lcom/shabakaty/downloader/s13;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/s13$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/s13$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/s13$a;->a:Lcom/shabakaty/downloader/s13$a;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/t13;

    sget-object v1, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/t13;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/shabakaty/downloader/s13$a;->b:Lcom/shabakaty/downloader/s13;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
