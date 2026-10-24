.class public final enum Lcom/shabakaty/downloader/i8;
.super Ljava/lang/Enum;
.source "AnnotatedCallableKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/i8;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/i8;

.field public static final enum s:Lcom/shabakaty/downloader/i8;

.field public static final enum t:Lcom/shabakaty/downloader/i8;

.field public static final enum u:Lcom/shabakaty/downloader/i8;

.field public static final synthetic v:[Lcom/shabakaty/downloader/i8;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i8;

    const-string v1, "FUNCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/i8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/i8;->r:Lcom/shabakaty/downloader/i8;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/i8;

    const-string v3, "PROPERTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/i8;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/i8;->s:Lcom/shabakaty/downloader/i8;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/i8;

    const-string v5, "PROPERTY_GETTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/i8;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/i8;->t:Lcom/shabakaty/downloader/i8;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/i8;

    const-string v7, "PROPERTY_SETTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/i8;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/i8;->u:Lcom/shabakaty/downloader/i8;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shabakaty/downloader/i8;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/shabakaty/downloader/i8;->v:[Lcom/shabakaty/downloader/i8;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/i8;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/i8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/i8;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/i8;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/i8;->v:[Lcom/shabakaty/downloader/i8;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/i8;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/i8;

    return-object v0
.end method
