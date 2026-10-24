.class public final Lcom/shabakaty/cinemana/ca1/Ui7$CachedSeason;
.super Ljava/lang/Object;
.source "Ui7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Ui7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedSeason"
.end annotation


# instance fields
.field final data:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Ui7$CachedSeason;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$CachedSeason;->data:Ljava/util/List;

    return-object v0
.end method
