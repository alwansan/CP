.class public abstract Lcom/shabakaty/downloader/hi2;
.super Ljava/lang/Object;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/hi2$c;,
        Lcom/shabakaty/downloader/hi2$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/hi2;

.field public static final b:Lcom/shabakaty/downloader/hi2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/hi2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hi2$b;-><init>(Lcom/shabakaty/downloader/hi2$a;)V

    sput-object v0, Lcom/shabakaty/downloader/hi2;->a:Lcom/shabakaty/downloader/hi2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/hi2$c;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hi2$c;-><init>(Lcom/shabakaty/downloader/hi2$a;)V

    sput-object v0, Lcom/shabakaty/downloader/hi2;->b:Lcom/shabakaty/downloader/hi2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/hi2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
