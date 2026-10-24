.class public final synthetic Lcom/shabakaty/downloader/ij3$a;
.super Ljava/lang/Object;
.source "ProtoEnumFlagsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ij3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/shabakaty/downloader/ri3;->values()[Lcom/shabakaty/downloader/ri3;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v3, 0x2

    aput v3, v0, v2

    const/4 v4, 0x3

    aput v4, v0, v3

    const/4 v5, 0x4

    aput v5, v0, v4

    sput-object v0, Lcom/shabakaty/downloader/ij3$a;->a:[I

    invoke-static {}, Lcom/shabakaty/downloader/tq$a;->values()[Lcom/shabakaty/downloader/tq$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    invoke-static {}, Lcom/shabakaty/downloader/fj3;->values()[Lcom/shabakaty/downloader/fj3;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v5

    aput v5, v0, v3

    const/4 v1, 0x5

    aput v1, v0, v4

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/shabakaty/downloader/ij3$a;->b:[I

    return-void
.end method
