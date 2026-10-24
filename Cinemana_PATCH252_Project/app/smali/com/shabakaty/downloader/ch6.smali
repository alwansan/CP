.class public final enum Lcom/shabakaty/downloader/ch6;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/shabakaty/downloader/hw5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ch6;",
        ">;",
        "Lcom/shabakaty/downloader/hw5;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/ch6;

.field public static final enum t:Lcom/shabakaty/downloader/ch6;

.field public static final enum u:Lcom/shabakaty/downloader/ch6;

.field public static final enum v:Lcom/shabakaty/downloader/ch6;

.field public static final enum w:Lcom/shabakaty/downloader/ch6;

.field public static final synthetic x:[Lcom/shabakaty/downloader/ch6;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/shabakaty/downloader/ch6;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/ch6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/ch6;->s:Lcom/shabakaty/downloader/ch6;

    new-instance v1, Lcom/shabakaty/downloader/ch6;

    const-string v3, "UNMETERED_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/ch6;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/ch6;->t:Lcom/shabakaty/downloader/ch6;

    new-instance v3, Lcom/shabakaty/downloader/ch6;

    const-string v5, "UNMETERED_OR_DAILY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/ch6;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/ch6;->u:Lcom/shabakaty/downloader/ch6;

    new-instance v5, Lcom/shabakaty/downloader/ch6;

    const-string v7, "FAST_IF_RADIO_AWAKE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/ch6;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/ch6;->v:Lcom/shabakaty/downloader/ch6;

    new-instance v7, Lcom/shabakaty/downloader/ch6;

    const-string v9, "NEVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/ch6;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/ch6;->w:Lcom/shabakaty/downloader/ch6;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/shabakaty/downloader/ch6;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/shabakaty/downloader/ch6;->x:[Lcom/shabakaty/downloader/ch6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shabakaty/downloader/ch6;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/ch6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ch6;->x:[Lcom/shabakaty/downloader/ch6;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/ch6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ch6;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ch6;->r:I

    return v0
.end method
