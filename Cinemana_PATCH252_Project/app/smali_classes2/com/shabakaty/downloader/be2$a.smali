.class public final enum Lcom/shabakaty/downloader/be2$a;
.super Ljava/lang/Enum;
.source "KotlinClassHeader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/be2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/be2$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/be2$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum t:Lcom/shabakaty/downloader/be2$a;

.field public static final enum u:Lcom/shabakaty/downloader/be2$a;

.field public static final enum v:Lcom/shabakaty/downloader/be2$a;

.field public static final enum w:Lcom/shabakaty/downloader/be2$a;

.field public static final enum x:Lcom/shabakaty/downloader/be2$a;

.field public static final enum y:Lcom/shabakaty/downloader/be2$a;

.field public static final synthetic z:[Lcom/shabakaty/downloader/be2$a;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/be2$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/be2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/be2$a;->t:Lcom/shabakaty/downloader/be2$a;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/be2$a;

    const-string v3, "CLASS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/be2$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/be2$a;->u:Lcom/shabakaty/downloader/be2$a;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/be2$a;

    const-string v5, "FILE_FACADE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/be2$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/be2$a;->v:Lcom/shabakaty/downloader/be2$a;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/be2$a;

    const-string v7, "SYNTHETIC_CLASS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/be2$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/be2$a;->w:Lcom/shabakaty/downloader/be2$a;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/be2$a;

    const-string v9, "MULTIFILE_CLASS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/be2$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/be2$a;->x:Lcom/shabakaty/downloader/be2$a;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/be2$a;

    const-string v11, "MULTIFILE_CLASS_PART"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/shabakaty/downloader/be2$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shabakaty/downloader/be2$a;->y:Lcom/shabakaty/downloader/be2$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/shabakaty/downloader/be2$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/shabakaty/downloader/be2$a;->z:[Lcom/shabakaty/downloader/be2$a;

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/be2$a;->values()[Lcom/shabakaty/downloader/be2$a;

    move-result-object v0

    .line 8
    array-length v1, v0

    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    const/16 v1, 0x10

    .line 9
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 10
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 11
    iget v5, v4, Lcom/shabakaty/downloader/be2$a;->r:I

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v3, Lcom/shabakaty/downloader/be2$a;->s:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shabakaty/downloader/be2$a;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/be2$a;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/be2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/be2$a;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/be2$a;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/be2$a;->z:[Lcom/shabakaty/downloader/be2$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/be2$a;

    return-object v0
.end method
