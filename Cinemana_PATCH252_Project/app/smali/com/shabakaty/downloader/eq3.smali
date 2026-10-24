.class public abstract Lcom/shabakaty/downloader/eq3;
.super Ljava/lang/Object;
.source "ReflectionAccessor.java"


# static fields
.field public static final a:Lcom/shabakaty/downloader/eq3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcom/shabakaty/downloader/u82;->a:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/te3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/te3;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/gw4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gw4;-><init>()V

    :goto_0
    sput-object v0, Lcom/shabakaty/downloader/eq3;->a:Lcom/shabakaty/downloader/eq3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/reflect/AccessibleObject;)V
.end method
