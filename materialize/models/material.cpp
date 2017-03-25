#include "material.h"

Material::Material()
{

}

Material::Material(string _path){
    path = _path;
}

Material::SetMaps(string diffuse, string normal, string reflection, string height, string roughness, string transparancy, string emission){
    if (diffuse != "")
        map.diffuse = diffuse;
    if (normal != "")
        map.normal = normal;
    if (reflection != "")
        map.reflection = reflection;
    if (height != "")
        map.height = height;
    if (roughness != "")
        map.roughness = roughness;
    if (transparancy != "")
        map.transparancy = transparancy;
    if (emission != "")
        map.emission = emission;
}
