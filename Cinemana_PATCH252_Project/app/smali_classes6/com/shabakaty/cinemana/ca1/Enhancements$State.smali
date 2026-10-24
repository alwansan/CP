.class Lcom/shabakaty/cinemana/ca1/Enhancements$State;
.super Ljava/lang/Object;
.source "Enhancements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Enhancements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field base:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field query:Ljava/lang/String;

.field updating:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->base:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$State;->query:Ljava/lang/String;

    return-void
.end method
