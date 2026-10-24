.class public final synthetic Lcom/shabakaty/downloader/a06;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final a:Lcom/shabakaty/downloader/t80;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/a06;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a06;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a06;->a:Lcom/shabakaty/downloader/t80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/google/mlkit/vision/common/internal/a$a;

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q80;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/a;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/common/internal/a;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
