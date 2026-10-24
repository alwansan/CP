.class public Lcom/shabakaty/downloader/nc0$b;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/shabakaty/downloader/k43;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/nc0;->a(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/k43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/k43<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/w12;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nc0;Lcom/shabakaty/downloader/w12;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/nc0$b;->a:Lcom/shabakaty/downloader/w12;

    iput-object p3, p0, Lcom/shabakaty/downloader/nc0$b;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nc0$b;->a:Lcom/shabakaty/downloader/w12;

    iget-object v1, p0, Lcom/shabakaty/downloader/nc0$b;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/w12;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
