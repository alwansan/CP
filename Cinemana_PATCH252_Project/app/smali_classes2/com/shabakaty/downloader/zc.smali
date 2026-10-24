.class public final enum Lcom/shabakaty/downloader/zc;
.super Ljava/lang/Enum;
.source "ArrayListSupplier.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lcom/shabakaty/downloader/in1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/zc;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/shabakaty/downloader/in1<",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/zc;

.field public static final synthetic s:[Lcom/shabakaty/downloader/zc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zc;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/zc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/zc;->r:Lcom/shabakaty/downloader/zc;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/shabakaty/downloader/zc;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/shabakaty/downloader/zc;->s:[Lcom/shabakaty/downloader/zc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/zc;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/zc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/zc;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/zc;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zc;->s:[Lcom/shabakaty/downloader/zc;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/zc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/zc;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
