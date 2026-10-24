.class public abstract enum Lcom/shabakaty/downloader/pd4;
.super Ljava/lang/Enum;
.source "StorageUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/pd4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/pd4;

.field public static final enum t:Lcom/shabakaty/downloader/pd4;

.field public static final enum u:Lcom/shabakaty/downloader/pd4;

.field public static final synthetic v:[Lcom/shabakaty/downloader/pd4;


# instance fields
.field public r:J


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pd4$a;

    const-string v1, "TERABYTES"

    const/4 v2, 0x0

    const-wide v3, 0x10000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/pd4$a;-><init>(Ljava/lang/String;IJ)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/pd4$b;

    const-string v3, "GIGABYTES"

    const/4 v4, 0x1

    const-wide/32 v5, 0x40000000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/shabakaty/downloader/pd4$b;-><init>(Ljava/lang/String;IJ)V

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/pd4$c;

    const-string v5, "MEGABYTES"

    const/4 v6, 0x2

    const-wide/32 v7, 0x100000

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/shabakaty/downloader/pd4$c;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/shabakaty/downloader/pd4;->s:Lcom/shabakaty/downloader/pd4;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/pd4$d;

    const-string v7, "KILOBYTES"

    const/4 v8, 0x3

    const-wide/16 v9, 0x400

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/shabakaty/downloader/pd4$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/shabakaty/downloader/pd4;->t:Lcom/shabakaty/downloader/pd4;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/pd4$e;

    const-string v9, "BYTES"

    const/4 v10, 0x4

    const-wide/16 v11, 0x1

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/shabakaty/downloader/pd4$e;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/shabakaty/downloader/pd4;->u:Lcom/shabakaty/downloader/pd4;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/shabakaty/downloader/pd4;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/shabakaty/downloader/pd4;->v:[Lcom/shabakaty/downloader/pd4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLcom/shabakaty/downloader/pd4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-wide p3, p0, Lcom/shabakaty/downloader/pd4;->r:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/pd4;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/pd4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/pd4;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/pd4;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pd4;->v:[Lcom/shabakaty/downloader/pd4;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/pd4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/pd4;

    return-object v0
.end method


# virtual methods
.method public f(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/pd4;->r:J

    mul-long p1, p1, v0

    sget-object v0, Lcom/shabakaty/downloader/pd4;->t:Lcom/shabakaty/downloader/pd4;

    iget-wide v0, v0, Lcom/shabakaty/downloader/pd4;->r:J

    div-long/2addr p1, v0

    return-wide p1
.end method
