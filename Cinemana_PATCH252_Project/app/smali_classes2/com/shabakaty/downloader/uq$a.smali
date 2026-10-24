.class public Lcom/shabakaty/downloader/uq$a;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/uq$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uq$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uq$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/uq$a;->r:Lcom/shabakaty/downloader/uq$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/uq$a;->r:Lcom/shabakaty/downloader/uq$a;

    return-object v0
.end method
