.class public final enum Lcom/facebook/imagepipeline/image/EncodedImageOrigin;
.super Ljava/lang/Enum;
.source "EncodedImageOrigin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imagepipeline/image/EncodedImageOrigin;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

.field public static final synthetic t:[Lcom/facebook/imagepipeline/image/EncodedImageOrigin;


# instance fields
.field public final r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    const-string v3, "not_set"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    const-string v3, "NETWORK"

    const/4 v4, 0x1

    const-string v5, "network"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->s:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    .line 3
    new-instance v3, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    const-string v5, "DISK"

    const/4 v6, 0x2

    const-string v7, "disk"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    new-instance v5, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    const-string v7, "ENCODED_MEM_CACHE"

    const/4 v8, 0x3

    const-string v9, "encoded_mem_cache"

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->t:[Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->r:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/image/EncodedImageOrigin;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imagepipeline/image/EncodedImageOrigin;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->t:[Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->r:Ljava/lang/String;

    return-object v0
.end method
