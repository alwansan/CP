.class public final enum Lcom/shabakaty/downloader/ms2$b;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/yf7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ms2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ms2$b;",
        ">;",
        "Lcom/shabakaty/downloader/yf7;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/ms2$b;

.field public static final enum t:Lcom/shabakaty/downloader/ms2$b;

.field public static final enum u:Lcom/shabakaty/downloader/ms2$b;

.field public static final synthetic v:[Lcom/shabakaty/downloader/ms2$b;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/shabakaty/downloader/ms2$b;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/ms2$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/ms2$b;->s:Lcom/shabakaty/downloader/ms2$b;

    new-instance v1, Lcom/shabakaty/downloader/ms2$b;

    const-string v3, "MESSAGE_DELIVERED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/ms2$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/ms2$b;->t:Lcom/shabakaty/downloader/ms2$b;

    new-instance v3, Lcom/shabakaty/downloader/ms2$b;

    const-string v5, "MESSAGE_OPEN"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/ms2$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/ms2$b;->u:Lcom/shabakaty/downloader/ms2$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shabakaty/downloader/ms2$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/shabakaty/downloader/ms2$b;->v:[Lcom/shabakaty/downloader/ms2$b;

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

    iput p3, p0, Lcom/shabakaty/downloader/ms2$b;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/ms2$b;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/ms2$b;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/ms2$b;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/ms2$b;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ms2$b;->v:[Lcom/shabakaty/downloader/ms2$b;

    .line 1
    invoke-virtual {v0}, [Lcom/shabakaty/downloader/ms2$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ms2$b;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ms2$b;->r:I

    return v0
.end method
