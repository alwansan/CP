.class public Lcom/google/common/collect/s$b;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/z04;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/z04<",
            "Lcom/google/common/collect/s;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/shabakaty/downloader/z04;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/z04<",
            "Lcom/google/common/collect/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/common/collect/s;

    const-string v1, "u"

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/z04;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/z04;-><init>(Ljava/lang/reflect/Field;Lcom/shabakaty/downloader/y04;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    sput-object v1, Lcom/google/common/collect/s$b;->a:Lcom/shabakaty/downloader/z04;

    .line 5
    const-class v0, Lcom/google/common/collect/s;

    const-string v1, "v"

    .line 6
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/z04;

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/z04;-><init>(Ljava/lang/reflect/Field;Lcom/shabakaty/downloader/y04;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    sput-object v1, Lcom/google/common/collect/s$b;->b:Lcom/shabakaty/downloader/z04;

    return-void

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
