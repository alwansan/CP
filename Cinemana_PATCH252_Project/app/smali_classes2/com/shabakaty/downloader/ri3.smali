.class public final enum Lcom/shabakaty/downloader/ri3;
.super Ljava/lang/Enum;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/z22$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ri3;",
        ">;",
        "Lcom/shabakaty/downloader/z22$a;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/ri3;

.field public static final enum t:Lcom/shabakaty/downloader/ri3;

.field public static final enum u:Lcom/shabakaty/downloader/ri3;

.field public static final enum v:Lcom/shabakaty/downloader/ri3;

.field public static final synthetic w:[Lcom/shabakaty/downloader/ri3;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ri3;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/ri3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/ri3;->s:Lcom/shabakaty/downloader/ri3;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ri3;

    const-string v3, "FAKE_OVERRIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/ri3;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/ri3;->t:Lcom/shabakaty/downloader/ri3;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/ri3;

    const-string v5, "DELEGATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/ri3;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/ri3;->u:Lcom/shabakaty/downloader/ri3;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/ri3;

    const-string v7, "SYNTHESIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/ri3;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/ri3;->v:Lcom/shabakaty/downloader/ri3;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shabakaty/downloader/ri3;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/shabakaty/downloader/ri3;->w:[Lcom/shabakaty/downloader/ri3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/ri3;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/ri3;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ri3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/ri3;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/ri3;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ri3;->w:[Lcom/shabakaty/downloader/ri3;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/ri3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ri3;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ri3;->r:I

    return v0
.end method
