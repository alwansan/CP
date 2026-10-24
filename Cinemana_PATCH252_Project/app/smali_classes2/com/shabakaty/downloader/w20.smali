.class public final enum Lcom/shabakaty/downloader/w20;
.super Ljava/lang/Enum;
.source "ClassKind.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/w20;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/w20;

.field public static final enum s:Lcom/shabakaty/downloader/w20;

.field public static final enum t:Lcom/shabakaty/downloader/w20;

.field public static final enum u:Lcom/shabakaty/downloader/w20;

.field public static final enum v:Lcom/shabakaty/downloader/w20;

.field public static final enum w:Lcom/shabakaty/downloader/w20;

.field public static final synthetic x:[Lcom/shabakaty/downloader/w20;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/w20;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/w20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/w20;->r:Lcom/shabakaty/downloader/w20;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/w20;

    const-string v3, "INTERFACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/w20;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/w20;

    const-string v5, "ENUM_CLASS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/w20;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/w20;->t:Lcom/shabakaty/downloader/w20;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/w20;

    const-string v7, "ENUM_ENTRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/w20;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/w20;->u:Lcom/shabakaty/downloader/w20;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/w20;

    const-string v9, "ANNOTATION_CLASS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shabakaty/downloader/w20;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shabakaty/downloader/w20;->v:Lcom/shabakaty/downloader/w20;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/w20;

    const-string v11, "OBJECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shabakaty/downloader/w20;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shabakaty/downloader/w20;->w:Lcom/shabakaty/downloader/w20;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/shabakaty/downloader/w20;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/shabakaty/downloader/w20;->x:[Lcom/shabakaty/downloader/w20;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/w20;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/w20;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/w20;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/w20;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/w20;->x:[Lcom/shabakaty/downloader/w20;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/w20;

    return-object v0
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w20;->w:Lcom/shabakaty/downloader/w20;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/w20;->u:Lcom/shabakaty/downloader/w20;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
