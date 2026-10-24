.class public final enum Lcom/shabakaty/downloader/ms2$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ms2$d;",
        ">;",
        "Lcom/shabakaty/downloader/yf7;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/ms2$d;

.field public static final enum t:Lcom/shabakaty/downloader/ms2$d;

.field public static final enum u:Lcom/shabakaty/downloader/ms2$d;

.field public static final enum v:Lcom/shabakaty/downloader/ms2$d;

.field public static final synthetic w:[Lcom/shabakaty/downloader/ms2$d;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/shabakaty/downloader/ms2$d;

    const-string v1, "UNKNOWN_OS"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/ms2$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/ms2$d;->s:Lcom/shabakaty/downloader/ms2$d;

    new-instance v1, Lcom/shabakaty/downloader/ms2$d;

    const-string v3, "ANDROID"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/ms2$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/ms2$d;->t:Lcom/shabakaty/downloader/ms2$d;

    new-instance v3, Lcom/shabakaty/downloader/ms2$d;

    const-string v5, "IOS"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/ms2$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/ms2$d;->u:Lcom/shabakaty/downloader/ms2$d;

    new-instance v5, Lcom/shabakaty/downloader/ms2$d;

    const-string v7, "WEB"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/ms2$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/ms2$d;->v:Lcom/shabakaty/downloader/ms2$d;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shabakaty/downloader/ms2$d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/shabakaty/downloader/ms2$d;->w:[Lcom/shabakaty/downloader/ms2$d;

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

    iput p3, p0, Lcom/shabakaty/downloader/ms2$d;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/ms2$d;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/ms2$d;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/ms2$d;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/ms2$d;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ms2$d;->w:[Lcom/shabakaty/downloader/ms2$d;

    .line 1
    invoke-virtual {v0}, [Lcom/shabakaty/downloader/ms2$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ms2$d;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ms2$d;->r:I

    return v0
.end method
